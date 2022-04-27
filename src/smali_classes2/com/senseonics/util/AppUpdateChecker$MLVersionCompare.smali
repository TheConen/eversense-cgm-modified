.class final enum Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;
.super Ljava/lang/Enum;
.source "AppUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/AppUpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MLVersionCompare"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

.field public static final enum FIND_NEWER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

.field public static final enum FIND_OLDER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

.field public static final enum FIND_SAME:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 57
    new-instance v0, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    const/4 v1, 0x0

    const-string v2, "FIND_NEWER"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_NEWER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    .line 58
    new-instance v0, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    const/4 v2, 0x1

    const-string v3, "FIND_OLDER"

    invoke-direct {v0, v3, v2}, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_OLDER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    .line 59
    new-instance v0, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    const/4 v3, 0x2

    const-string v4, "FIND_SAME"

    invoke-direct {v0, v4, v3}, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_SAME:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    .line 56
    sget-object v5, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_NEWER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    aput-object v5, v4, v1

    sget-object v1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_OLDER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->$VALUES:[Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;
    .locals 1

    .line 56
    const-class v0, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;
    .locals 1

    .line 56
    sget-object v0, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->$VALUES:[Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    invoke-virtual {v0}, [Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object v0
.end method
