.class public Lcom/senseonics/view/InkPageIndicator$LeftwardStartPredicate;
.super Lcom/senseonics/view/InkPageIndicator$StartPredicate;
.source "InkPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/view/InkPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LeftwardStartPredicate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/view/InkPageIndicator;


# direct methods
.method public constructor <init>(Lcom/senseonics/view/InkPageIndicator;F)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator$LeftwardStartPredicate;->this$0:Lcom/senseonics/view/InkPageIndicator;

    .line 854
    invoke-direct {p0, p1, p2}, Lcom/senseonics/view/InkPageIndicator$StartPredicate;-><init>(Lcom/senseonics/view/InkPageIndicator;F)V

    return-void
.end method


# virtual methods
.method shouldStart(F)Z
    .locals 1

    .line 858
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator$LeftwardStartPredicate;->thresholdValue:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
