.class Lcom/senseonics/graph/GraphViewUI$4;
.super Ljava/lang/Object;
.source "GraphViewUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/graph/GraphViewUI;->addUITransparentButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/graph/GraphViewUI;


# direct methods
.method constructor <init>(Lcom/senseonics/graph/GraphViewUI;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 147
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->access$600(Lcom/senseonics/graph/GraphViewUI;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    new-instance v7, Lcom/senseonics/graph/util/Glucose;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x4b

    const/4 v5, 0x3

    const/16 v6, 0x450

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-static {v0, v7}, Lcom/senseonics/graph/GraphViewUI;->access$302(Lcom/senseonics/graph/GraphViewUI;Lcom/senseonics/graph/util/Glucose;)Lcom/senseonics/graph/util/Glucose;

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    new-instance v7, Lcom/senseonics/graph/util/Glucose;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0xb4

    const/4 v5, 0x3

    const/16 v6, 0x44f

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-static {v0, v7}, Lcom/senseonics/graph/GraphViewUI;->access$302(Lcom/senseonics/graph/GraphViewUI;Lcom/senseonics/graph/util/Glucose;)Lcom/senseonics/graph/util/Glucose;

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    new-instance v7, Lcom/senseonics/graph/util/Glucose;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x3c

    const/4 v5, 0x3

    const/16 v6, 0x44e

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-static {v0, v7}, Lcom/senseonics/graph/GraphViewUI;->access$302(Lcom/senseonics/graph/GraphViewUI;Lcom/senseonics/graph/util/Glucose;)Lcom/senseonics/graph/util/Glucose;

    goto :goto_0

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    new-instance v7, Lcom/senseonics/graph/util/Glucose;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x118

    const/4 v5, 0x3

    const/16 v6, 0x44d

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-static {v0, v7}, Lcom/senseonics/graph/GraphViewUI;->access$302(Lcom/senseonics/graph/GraphViewUI;Lcom/senseonics/graph/util/Glucose;)Lcom/senseonics/graph/util/Glucose;

    goto :goto_0

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    new-instance v7, Lcom/senseonics/graph/util/Glucose;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x82

    const/4 v5, 0x3

    const/16 v6, 0x44c

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-static {v0, v7}, Lcom/senseonics/graph/GraphViewUI;->access$302(Lcom/senseonics/graph/GraphViewUI;Lcom/senseonics/graph/util/Glucose;)Lcom/senseonics/graph/util/Glucose;

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->access$608(Lcom/senseonics/graph/GraphViewUI;)I

    .line 165
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->access$500(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/graph/VerticalLineHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/graph/VerticalLineHolder;->getVerticalLineManager()Lcom/senseonics/graph/VerticalLineManager;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/senseonics/graph/VerticalLineManager;->drawVerticalLine(F)V

    return-void
.end method
