<script>
      $('.sel2').select2({width: '80%'});
        
</script>
<!-- Modal -->
<div class="modal" id="exampleModal2" role="dialog" aria-hidden="true" data-backdrop="static"> 
  <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-list-alt"></i>SCAN AN ITEM</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="loadmodal2('scanmodal');">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
            <div class="card">
              <div class="card-header">Scan Reference Number</div>
              <div class="card-body">
           
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text">REF #: </span>
                    </div>
                    <input type="text" class="form-control" id="ref_num" placeholder="Reference #">
                  </div>

              </div>
            </div>
<br>
            <div class="card">
              <div class="card-header">Details</div>
              <div class="card-body">
           
                  <div class="input-group mb-3">
                   
                  </div>

              </div>
            </div>            


      </div>
      <div class="modal-footer">
        <button id="btnclose" type="button" class="btn btn-secondary" data-dismiss="modal" onclick="loadmodal2('scanmodal');cancelfilter('ShipmentList','','shipment_management')">Close</button>
      </div>
    </div>
  </div>
</div>

