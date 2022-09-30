using Carreras__SP.Datos;
using Carreras__SP.Dominio;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Carreras__SP.Presentacion
{
    public partial class frmConsultarCarrera : Form
    {

        Carrera carrera;
        Helper helper = new Helper();

        public frmConsultarCarrera()
        {
            InitializeComponent();
            carrera = new Carrera();
        }

        private void frmConsultarCarrera_Load(object sender, EventArgs e)
        {
            cboCarreras.DataSource = helper.Consultar_SP("sp_consultar_carreras");
            cboCarreras.ValueMember = "id_carrera";
            cboCarreras.DisplayMember = "nombre";
        }

        private void btnConsultarCarrera_Click(object sender, EventArgs e)
        {

            if (cboCarreras.SelectedIndex != -1)
            {
                int Id_Carrera = cboCarreras.SelectedIndex + 1;
                dgvCarreras.DataSource = helper.ConsultarPlanCarrera(Id_Carrera);
            }
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
    }
}
