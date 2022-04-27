.class Lcom/senseonics/fragments/GraphFragment$3;
.super Ljava/lang/Object;
.source "GraphFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/GraphFragment;->addGraph()V
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

    .line 423
    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->access$000(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 428
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->access$200(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/GraphFragment;->access$102(Lcom/senseonics/fragments/GraphFragment;I)I

    .line 429
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->access$100(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/senseonics/fragments/GraphFragment;->access$302(Lcom/senseonics/fragments/GraphFragment;I)I

    .line 430
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->access$500(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/GraphFragment;->access$402(Lcom/senseonics/fragments/GraphFragment;I)I

    .line 431
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->access$500(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/GraphFragment;->access$602(Lcom/senseonics/fragments/GraphFragment;I)I

    .line 434
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/GraphFragment;->access$700(Lcom/senseonics/fragments/GraphFragment;Landroid/app/Activity;)V

    .line 435
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->access$800(Lcom/senseonics/fragments/GraphFragment;)V

    return-void
.end method
