using DotNetMySql;



var builder = WebApplication.CreateBuilder(args);

var dbConn = builder.Configuration.GetConnectionString("DefaultConnection");

builder.Services.AddTransient<AppDb>(_ => new AppDb(dbConn));

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.

    app.UseSwagger();
    app.UseSwaggerUI();


app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
