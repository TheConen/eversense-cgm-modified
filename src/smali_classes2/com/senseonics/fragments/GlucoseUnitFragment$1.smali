.class Lcom/senseonics/fragments/GlucoseUnitFragment$1;
.super Ljava/lang/Object;
.source "GlucoseUnitFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/GlucoseUnitFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/GlucoseUnitFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/GlucoseUnitFragment;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/senseonics/fragments/GlucoseUnitFragment$1;->this$0:Lcom/senseonics/fragments/GlucoseUnitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lcom/senseonics/fragments/GlucoseUnitFragment$1;->this$0:Lcom/senseonics/fragments/GlucoseUnitFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMgDLType:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
