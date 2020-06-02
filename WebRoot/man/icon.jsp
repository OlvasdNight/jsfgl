<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
%>

<html>
	<head>
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-theme.min.css">
		<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.js"></script>
		<script type="text/javascript" src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
		
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-select.min.css">
		<script type="text/javascript" src="<%=path%>/bootstrap/js/bootstrap-select.min.js"></script>
  		<script language='javascript'>
			function logout(){
				if(confirm("您确定要退出 校园打印定送管理系统吗？")) {
					top.location = "<%=path%>/logout.jsp";
					return true;
				}
				return false;
			}
	    </script>
	    <style type="text/css">
		    body {
		    	font-family: "Glyphicons Halflings";
		    	font-size:20px;
			}
		</style>
			
	</head>
	
	
	<div >
		
<i class="glyphicon-asterisk               "></i> 
<i class="glyphicon-plus                   "></i> 
<i class="glyphicon-eur                    "></i> 
<i class="glyphicon-minus                  "></i> 
<i class="glyphicon-cloud                  "></i> 
<i class="glyphicon-envelope               "></i> 
<i class="glyphicon-pencil                 "></i> 
<i class="glyphicon-glass                  "></i> 
<i class="glyphicon-music                  "></i> 
<i class="glyphicon-search                 "></i> 
<i class="glyphicon-heart                  "></i> 
<i class="glyphicon-star                   "></i> 
<i class="glyphicon-star-empty             "></i> 
<i class="glyphicon-user                   "></i> 
<i class="glyphicon-film                   "></i> 
<i class="glyphicon-th-large               "></i> 
<i class="glyphicon-th                     "></i> 
<i class="glyphicon-th-list                "></i> { content: "\e012"; } }
<i class="glyphicon-ok                     "></i> { content: "\e013"; } }
<i class="glyphicon-remove                 "></i> { content: "\e014"; } }
<i class="glyphicon-zoom-in                "></i> { content: "\e015"; } }
<i class="glyphicon-zoom-out               "></i> { content: "\e016"; } }
<i class="glyphicon-off                    "></i> { content: "\e017"; } }
<i class="glyphicon-signal                 "></i> { content: "\e018"; } }
<i class="glyphicon-cog                    "></i> { content: "\e019"; } }
<i class="glyphicon-trash                  "></i> { content: "\e020"; } }
<i class="glyphicon-home                   "></i> { content: "\e021"; } }
<i class="glyphicon-file                   "></i> { content: "\e022"; } }
<i class="glyphicon-time                   "></i> { content: "\e023"; } }
<i class="glyphicon-road                   "></i> { content: "\e024"; } }
<i class="glyphicon-download-alt           "></i> { content: "\e025"; } }
<i class="glyphicon-download               "></i> { content: "\e026"; } }
<i class="glyphicon-upload                 "></i> { content: "\e027"; } }
<i class="glyphicon-inbox                  "></i> { content: "\e028"; } }
<i class="glyphicon-play-circle            "></i> { content: "\e029"; } }
<i class="glyphicon-repeat                 "></i> { content: "\e030"; } }
<i class="glyphicon-refresh                "></i> { content: "\e031"; } }
<i class="glyphicon-list-alt               "></i> { content: "\e032"; } }
<i class="glyphicon-lock                   "></i> { content: "\e033"; } }
<i class="glyphicon-flag                   "></i> { content: "\e034"; } }
<i class="glyphicon-headphones             "></i> { content: "\e035"; } }
<i class="glyphicon-volume-off             "></i> { content: "\e036"; } }
<i class="glyphicon-volume-down            "></i> { content: "\e037"; } }
<i class="glyphicon-volume-up              "></i> { content: "\e038"; } }
<i class="glyphicon-qrcode                 "></i> { content: "\e039"; } }
<i class="glyphicon-barcode                "></i> { content: "\e040"; } }
<i class="glyphicon-tag                    "></i> { content: "\e041"; } }
<i class="glyphicon-tags                   "></i> { content: "\e042"; } }
<i class="glyphicon-book                   "></i> { content: "\e043"; } }
<i class="glyphicon-bookmark               "></i> { content: "\e044"; } }
<i class="glyphicon-print                  "></i> { content: "\e045"; } }
<i class="glyphicon-camera                 "></i> { content: "\e046"; } }
<i class="glyphicon-font                   "></i> { content: "\e047"; } }
<i class="glyphicon-bold                   "></i> { content: "\e048"; } }
<i class="glyphicon-italic                 "></i> { content: "\e049"; } }
<i class="glyphicon-text-height            "></i> { content: "\e050"; } }
<i class="glyphicon-text-width             "></i> { content: "\e051"; } }
<i class="glyphicon-align-left             "></i> { content: "\e052"; } }
<i class="glyphicon-align-center           "></i> { content: "\e053"; } }
<i class="glyphicon-align-right            "></i> { content: "\e054"; } }
<i class="glyphicon-align-justify          "></i> { content: "\e055"; } }
<i class="glyphicon-list                   "></i> { content: "\e056"; } }
<i class="glyphicon-indent-left            "></i> { content: "\e057"; } }
<i class="glyphicon-indent-right           "></i> { content: "\e058"; } }
<i class="glyphicon-facetime-video         "></i> { content: "\e059"; } }
<i class="glyphicon-picture                "></i> { content: "\e060"; } }
<i class="glyphicon-map-marker             "></i> { content: "\e062"; } }
<i class="glyphicon-adjust                 "></i> { content: "\e063"; } }
<i class="glyphicon-tint                   "></i> { content: "\e064"; } }
<i class="glyphicon-edit                   "></i> { content: "\e065"; } }
<i class="glyphicon-share                  "></i> { content: "\e066"; } }
<i class="glyphicon-check                  "></i> { content: "\e067"; } }
<i class="glyphicon-move                   "></i> { content: "\e068"; } }
<i class="glyphicon-step-backward          "></i> { content: "\e069"; } }
<i class="glyphicon-fast-backward          "></i> { content: "\e070"; } }
<i class="glyphicon-backward               "></i> { content: "\e071"; } }
<i class="glyphicon-play                   "></i> { content: "\e072"; } }
<i class="glyphicon-pause                  "></i> { content: "\e073"; } }
<i class="glyphicon-stop                   "></i> { content: "\e074"; } }
<i class="glyphicon-forward                "></i> { content: "\e075"; } }
<i class="glyphicon-fast-forward           "></i> { content: "\e076"; } }
<i class="glyphicon-step-forward           "></i> { content: "\e077"; } }
<i class="glyphicon-eject                  "></i> { content: "\e078"; } }
<i class="glyphicon-chevron-left           "></i> { content: "\e079"; } }
<i class="glyphicon-chevron-right          "></i> { content: "\e080"; } }
<i class="glyphicon-plus-sign              "></i> { content: "\e081"; } }
<i class="glyphicon-minus-sign             "></i> { content: "\e082"; } }
<i class="glyphicon-remove-sign            "></i> { content: "\e083"; } }
<i class="glyphicon-ok-sign                "></i> { content: "\e084"; } }
<i class="glyphicon-question-sign          "></i> { content: "\e085"; } }
<i class="glyphicon-info-sign              "></i> { content: "\e086"; } }
<i class="glyphicon-screenshot             "></i> { content: "\e087"; } }
<i class="glyphicon-remove-circle          "></i> { content: "\e088"; } }
<i class="glyphicon-ok-circle              "></i> { content: "\e089"; } }
<i class="glyphicon-ban-circle             "></i> { content: "\e090"; } }
<i class="glyphicon-arrow-left             "></i> { content: "\e091"; } }
<i class="glyphicon-arrow-right            "></i> { content: "\e092"; } }
<i class="glyphicon-arrow-up               "></i> { content: "\e093"; } }
<i class="glyphicon-arrow-down             "></i> { content: "\e094"; } }
<i class="glyphicon-share-alt              "></i> { content: "\e095"; } }
<i class="glyphicon-resize-full            "></i> { content: "\e096"; } }
<i class="glyphicon-resize-small           "></i> { content: "\e097"; } }
<i class="glyphicon-exclamation-sign       "></i> { content: "\e101"; } }
<i class="glyphicon-gift                   "></i> { content: "\e102"; } }
<i class="glyphicon-leaf                   "></i> { content: "\e103"; } }
<i class="glyphicon-fire                   "></i> { content: "\e104"; } }
<i class="glyphicon-eye-open               "></i> { content: "\e105"; } }
<i class="glyphicon-eye-close              "></i> { content: "\e106"; } }
<i class="glyphicon-warning-sign           "></i> { content: "\e107"; } }
<i class="glyphicon-plane                  "></i> { content: "\e108"; } }
<i class="glyphicon-calendar               "></i> { content: "\e109"; } }
<i class="glyphicon-random                 "></i> { content: "\e110"; } }
<i class="glyphicon-comment                "></i> { content: "\e111"; } }
<i class="glyphicon-magnet                 "></i> { content: "\e112"; } }
<i class="glyphicon-chevron-up             "></i> { content: "\e113"; } }
<i class="glyphicon-chevron-down           "></i> { content: "\e114"; } }
<i class="glyphicon-retweet                "></i> { content: "\e115"; } }
<i class="glyphicon-shopping-cart          "></i> { content: "\e116"; } }
<i class="glyphicon-folder-close           "></i> { content: "\e117"; } }
<i class="glyphicon-folder-open            "></i> { content: "\e118"; } }
<i class="glyphicon-resize-vertical        "></i> { content: "\e119"; } }
<i class="glyphicon-resize-horizontal      "></i> { content: "\e120"; } }
<i class="glyphicon-hdd                    "></i> { content: "\e121"; } }
<i class="glyphicon-bullhorn               "></i> { content: "\e122"; } }
<i class="glyphicon-bell                   "></i> { content: "\e123"; } }
<i class="glyphicon-certificate            "></i> { content: "\e124"; } }
<i class="glyphicon-thumbs-up              "></i> { content: "\e125"; } }
<i class="glyphicon-thumbs-down            "></i> { content: "\e126"; } }
<i class="glyphicon-hand-right             "></i> { content: "\e127"; } }
<i class="glyphicon-hand-left              "></i> { content: "\e128"; } }
<i class="glyphicon-hand-up                "></i> { content: "\e129"; } }
<i class="glyphicon-hand-down              "></i> { content: "\e130"; } }
<i class="glyphicon-circle-arrow-right     "></i> { content: "\e131"; } }
<i class="glyphicon-circle-arrow-left      "></i> { content: "\e132"; } }
<i class="glyphicon-circle-arrow-up        "></i> { content: "\e133"; } }
<i class="glyphicon-circle-arrow-down      "></i> { content: "\e134"; } }
<i class="glyphicon-globe                  "></i> { content: "\e135"; } }
<i class="glyphicon-wrench                 "></i> { content: "\e136"; } }
<i class="glyphicon-tasks                  "></i> { content: "\e137"; } }
<i class="glyphicon-filter                 "></i> { content: "\e138"; } }
<i class="glyphicon-briefcase              "></i> { content: "\e139"; } }
<i class="glyphicon-fullscreen             "></i> { content: "\e140"; } }
<i class="glyphicon-dashboard              "></i> { content: "\e141"; } }
<i class="glyphicon-paperclip              "></i> { content: "\e142"; } }
<i class="glyphicon-heart-empty            "></i> { content: "\e143"; } }
<i class="glyphicon-link                   "></i> { content: "\e144"; } }
<i class="glyphicon-phone                  "></i> { content: "\e145"; } }
<i class="glyphicon-pushpin                "></i> { content: "\e146"; } }
<i class="glyphicon-usd                    "></i> { content: "\e148"; } }
<i class="glyphicon-gbp                    "></i> { content: "\e149"; } }
<i class="glyphicon-sort                   "></i> { content: "\e150"; } }
<i class="glyphicon-sort-by-alphabet       "></i> { content: "\e151"; } }
<i class="glyphicon-sort-by-alphabet-alt   "></i> { content: "\e152"; } }
<i class="glyphicon-sort-by-order          "></i> { content: "\e153"; } }
<i class="glyphicon-sort-by-order-alt      "></i> { content: "\e154"; } }
<i class="glyphicon-sort-by-attributes     "></i> { content: "\e155"; } }
<i class="glyphicon-sort-by-attributes-alt "></i> { content: "\e156"; } }
<i class="glyphicon-unchecked              "></i> { content: "\e157"; } }
<i class="glyphicon-expand                 "></i> { content: "\e158"; } }
<i class="glyphicon-collapse-down          "></i> { content: "\e159"; } }
<i class="glyphicon-collapse-up            "></i> { content: "\e160"; } }
<i class="glyphicon-log-in                 "></i> { content: "\e161"; } }
<i class="glyphicon-flash                  "></i> { content: "\e162"; } }
<i class="glyphicon-log-out                "></i> { content: "\e163"; } }
<i class="glyphicon-new-window             "></i> { content: "\e164"; } }
<i class="glyphicon-record                 "></i> { content: "\e165"; } }
<i class="glyphicon-save                   "></i> { content: "\e166"; } }
<i class="glyphicon-open                   "></i> { content: "\e167"; } }
<i class="glyphicon-saved                  "></i> { content: "\e168"; } }
<i class="glyphicon-import                 "></i> { content: "\e169"; } }
<i class="glyphicon-export                 "></i> { content: "\e170"; } }
<i class="glyphicon-send                   "></i> { content: "\e171"; } }
<i class="glyphicon-floppy-disk            "></i> { content: "\e172"; } }
<i class="glyphicon-floppy-saved           "></i> { content: "\e173"; } }
<i class="glyphicon-floppy-remove          "></i> { content: "\e174"; } }
<i class="glyphicon-floppy-save            "></i> { content: "\e175"; } }
<i class="glyphicon-floppy-open            "></i> { content: "\e176"; } }
<i class="glyphicon-credit-card            "></i> { content: "\e177"; } }
<i class="glyphicon-transfer               "></i> { content: "\e178"; } }
<i class="glyphicon-cutlery                "></i> { content: "\e179"; } }
<i class="glyphicon-header                 "></i> { content: "\e180"; } }
<i class="glyphicon-compressed             "></i> { content: "\e181"; } }
<i class="glyphicon-earphone               "></i> { content: "\e182"; } }
<i class="glyphicon-phone-alt              "></i> { content: "\e183"; } }
<i class="glyphicon-tower                  "></i> { content: "\e184"; } }
<i class="glyphicon-stats                  "></i> { content: "\e185"; } }
<i class="glyphicon-sd-video               "></i> { content: "\e186"; } }
<i class="glyphicon-hd-video               "></i> { content: "\e187"; } }
<i class="glyphicon-subtitles              "></i> { content: "\e188"; } }
<i class="glyphicon-sound-stereo           "></i> { content: "\e189"; } }
<i class="glyphicon-sound-dolby            "></i> { content: "\e190"; } }
<i class="glyphicon-sound-5-1              "></i> { content: "\e191"; } }
<i class="glyphicon-sound-6-1              "></i> { content: "\e192"; } }
<i class="glyphicon-sound-7-1              "></i> { content: "\e193"; } }
<i class="glyphicon-copyright-mark         "></i> { content: "\e194"; } }
<i class="glyphicon-registration-mark      "></i> { content: "\e195"; } }
<i class="glyphicon-cloud-download         "></i> { content: "\e197"; } }
<i class="glyphicon-cloud-upload           "></i> { content: "\e198"; } }
<i class="glyphicon-tree-conifer           "></i> { content: "\e199"; } }
<i class="glyphicon-tree-deciduous         "></i> { content: "\e200"; } }
<i class="glyphicon-cd                     "></i> { content: "\e201"; } }
<i class="glyphicon-save-file              "></i> { content: "\e202"; } }
<i class="glyphicon-open-file              "></i> { content: "\e203"; } }
<i class="glyphicon-level-up               "></i> { content: "\e204"; } }
<i class="glyphicon-copy                   "></i> { content: "\e205"; } }
<i class="glyphicon-paste                  "></i> { content: "\e206"; } }

<i class="glyphicon-door                   "></i> { content: "\1f6aa"; } }
<i class="glyphicon-key                    "></i> { content: "\1f511"; } }
<i class="glyphicon-alert                  "></i> { content: "\e209"; } }
<i class="glyphicon-equalizer              "></i> { content: "\e210"; } }
<i class="glyphicon-king                   "></i> { content: "\e211"; } }
<i class="glyphicon-queen                  "></i> { content: "\e212"; } }
<i class="glyphicon-pawn                   "></i> { content: "\e213"; } }
<i class="glyphicon-bishop                 "></i> { content: "\e214"; } }
<i class="glyphicon-knight                 "></i> { content: "\e215"; } }
<i class="glyphicon-baby-formula           "></i> { content: "\e216"; } }
<i class="glyphicon-tent                   "></i> { content: "\26fa"; } }
<i class="glyphicon-blackboard             "></i> { content: "\e218"; } }
<i class="glyphicon-bed                    "></i> { content: "\e219"; } }
<i class="glyphicon-apple                  "></i> { content: "\f8ff"; } }
<i class="glyphicon-erase                  "></i> { content: "\e221"; } }
<i class="glyphicon-hourglass              "></i> { content: "\231b"; } }
<i class="glyphicon-lamp                   "></i> { content: "\e223"; } }
<i class="glyphicon-duplicate              "></i> { content: "\e224"; } }
<i class="glyphicon-piggy-bank             "></i> { content: "\e225"; } }
<i class="glyphicon-scissors               "></i> { content: "\e226"; } }
<i class="glyphicon-bitcoin                "></i> { content: "\e227"; } }
<i class="glyphicon-btc                    "></i> { content: "\e227"; } }
<i class="glyphicon-xbt                    "></i> { content: "\e227"; } }
<i class="glyphicon-yen                    "></i> { content: "\00a5"; } }
<i class="glyphicon-jpy                    "></i> { content: "\00a5"; } }
<i class="glyphicon-ruble                  "></i> { content: "\20bd"; } }
<i class="glyphicon-rub                    "></i> { content: "\20bd"; } }
<i class="glyphicon-scale                  "></i> { content: "\e230"; } }
<i class="glyphicon-ice-lolly              "></i> { content: "\e231"; } }
<i class="glyphicon-ice-lolly-tasted       "></i> { content: "\e232"; } }
<i class="glyphicon-education              "></i> { content: "\e233"; } }
<i class="glyphicon-option-horizontal      "></i> { content: "\e234"; } }
<i class="glyphicon-option-vertical        "></i> { content: "\e235"; } }
<i class="glyphicon-menu-hamburger         "></i> { content: "\e236"; } }
<i class="glyphicon-modal-window           "></i> { content: "\e237"; } }
<i class="glyphicon-oil                    "></i> { content: "\e238"; } }
<i class="glyphicon-grain                  "></i> { content: "\e239"; } }
<i class="glyphicon-sunglasses             "></i> { content: "\e240"; } }
<i class="glyphicon-text-size              "></i> { content: "\e241"; } }
<i class="glyphicon-text-color             "></i> { content: "\e242"; } }
<i class="glyphicon-text-background        "></i> { content: "\e243"; } }
<i class="glyphicon-object-align-top       "></i> { content: "\e244"; } }
<i class="glyphicon-object-align-bottom    "></i> { content: "\e245"; } }
<i class="glyphicon-object-align-horizontal"></i> { content: "\e246"; } }
<i class="glyphicon-object-align-left      "></i> { content: "\e247"; } }
<i class="glyphicon-object-align-vertical  "></i> { content: "\e248"; } }
<i class="glyphicon-object-align-right     "></i> { content: "\e249"; } }
<i class="glyphicon-triangle-right         "></i> { content: "\e250"; } }
<i class="glyphicon-triangle-left          "></i> { content: "\e251"; } }
<i class="glyphicon-triangle-bottom        "></i> { content: "\e252"; } }
<i class="glyphicon-triangle-top           "></i> { content: "\e253"; } }
<i class="glyphicon-console                "></i> { content: "\e254"; } }
<i class="glyphicon-superscript            "></i> { content: "\e255"; } }
<i class="glyphicon-subscript              "></i> { content: "\e256"; } }
<i class="glyphicon-menu-left              "></i> { content: "\e257"; } }
<i class="glyphicon-menu-right             "></i> { content: "\e258"; } }
<i class="glyphicon-menu-down              "></i> { content: "\e259"; } }
<i class="glyphicon-menu-up                "></i> { content: "\e260"; } }
	</div>

	

</html>
