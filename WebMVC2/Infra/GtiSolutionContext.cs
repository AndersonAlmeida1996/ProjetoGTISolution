using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Web;
using WebMVC2.Models;

namespace WebMVC2.Infra
{
    public class GtiSolutionContext: DbContext
    {
        public GtiSolutionContext() : base("GTISolution")
        {

        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();

            var entity = modelBuilder.Entity<Cliente>();
            entity.HasKey(e => e.IdCliente);
            entity.Property(e => e.Nome);
            entity.Property(e => e.CPF);
            entity.Property(e => e.RG);
            entity.Property(e => e.DataNascimento);
            entity.Property(e => e.DataExpedicao);
            entity.Property(e => e.OrgaoExpedicao);
            entity.Property(e => e.UF);
            entity.Property(e => e.Sexo);
            entity.Property(e => e.EstadoCivil);
            entity.Property(e => e.Logradouro);
            entity.Property(e => e.Numero);
            entity.Property(e => e.Complemento);
            entity.Property(e => e.Cidade);
            entity.Property(e => e.Bairro);
            entity.Property(e => e.UFEndereco);

        }
        public virtual DbSet<Cliente> Clientes { get; set; }

       
    }

}