.class Lcom/senseonics/fragments/GraphFragment$8;
.super Ljava/lang/Object;
.source "GraphFragment.java"

# interfaces
.implements Lcom/senseonics/graph/GraphManagerView$GraphManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/GraphFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/GraphFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/GraphFragment;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissProgressDialog()V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->access$900(Lcom/senseonics/fragments/GraphFragment;)V

    return-void
.end method

.method public hideEventGlucosePopUp()V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/senseonics/fragments/PopupGraphManagerView;->setVisibility(I)V

    return-void
.end method

.method public onEventSelected(Lcom/senseonics/events/EventPoint;)V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->showEventDetails(Landroid/app/Fragment;Lcom/senseonics/events/EventPoint;)V

    return-void
.end method

.method public showEventPopUp(FLcom/senseonics/events/EventPoint;)V
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/GraphFragment;->access$100(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v2}, Lcom/senseonics/fragments/GraphFragment;->access$300(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/senseonics/fragments/PopupGraphManagerView;->putEventPopUp(FLcom/senseonics/events/EventPoint;II)V

    return-void
.end method

.method public showGlucosePopUp(FLcom/senseonics/graph/util/Glucose;)V
    .locals 7

    .line 556
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    iget-object v1, v0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->access$100(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v4

    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->access$300(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v5

    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    iget-object v6, v0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/fragments/PopupGraphManagerView;->putGlucosePopUp(FLcom/senseonics/graph/util/Glucose;IILcom/senseonics/model/TransmitterStateModel;)V

    return-void
.end method

.method public showNoGlucoseReadingPopUp(F)V
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/GraphFragment;->access$100(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v2}, Lcom/senseonics/fragments/GraphFragment;->access$300(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/senseonics/fragments/PopupGraphManagerView;->putNoSensorGlucosePopUp(FII)V

    return-void
.end method

.method public tapAddNewEvent(Ljava/util/Calendar;)V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/senseonics/util/AddEventMenuCreator;->createLogEventMenuDialog(Landroid/content/Context;Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method
