.class final Lcom/senseonics/view/InkPageIndicator$SavedState$1;
.super Ljava/lang/Object;
.source "InkPageIndicator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/view/InkPageIndicator$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/senseonics/view/InkPageIndicator$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/senseonics/view/InkPageIndicator$SavedState;
    .locals 2

    .line 900
    new-instance v0, Lcom/senseonics/view/InkPageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/senseonics/view/InkPageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lcom/senseonics/view/InkPageIndicator$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 897
    invoke-virtual {p0, p1}, Lcom/senseonics/view/InkPageIndicator$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/senseonics/view/InkPageIndicator$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/senseonics/view/InkPageIndicator$SavedState;
    .locals 0

    .line 905
    new-array p1, p1, [Lcom/senseonics/view/InkPageIndicator$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 897
    invoke-virtual {p0, p1}, Lcom/senseonics/view/InkPageIndicator$SavedState$1;->newArray(I)[Lcom/senseonics/view/InkPageIndicator$SavedState;

    move-result-object p1

    return-object p1
.end method
