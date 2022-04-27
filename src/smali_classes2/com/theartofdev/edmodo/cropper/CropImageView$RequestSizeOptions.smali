.class public final enum Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;
.super Ljava/lang/Enum;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestSizeOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

.field public static final enum NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

.field public static final enum RESIZE_EXACT:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

.field public static final enum RESIZE_FIT:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

.field public static final enum RESIZE_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

.field public static final enum SAMPLING:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1897
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    .line 1906
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    const/4 v2, 0x1

    const-string v3, "SAMPLING"

    invoke-direct {v0, v3, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    .line 1914
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    const/4 v3, 0x2

    const-string v4, "RESIZE_INSIDE"

    invoke-direct {v0, v4, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    .line 1923
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    const/4 v4, 0x3

    const-string v5, "RESIZE_FIT"

    invoke-direct {v0, v5, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_FIT:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    .line 1930
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    const/4 v5, 0x4

    const-string v6, "RESIZE_EXACT"

    invoke-direct {v0, v6, v5}, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_EXACT:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    .line 1894
    sget-object v7, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    aput-object v7, v6, v1

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    aput-object v1, v6, v2

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    aput-object v1, v6, v3

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_FIT:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->$VALUES:[Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1894
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;
    .locals 1

    .line 1894
    const-class v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    return-object p0
.end method

.method public static values()[Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;
    .locals 1

    .line 1894
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->$VALUES:[Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {v0}, [Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    return-object v0
.end method
