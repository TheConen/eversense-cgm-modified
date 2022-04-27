.class public final enum Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;
.super Ljava/lang/Enum;
.source "CommandProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/CommandProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VibrationPattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

.field public static final enum GlucoseHighAlarm:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

.field public static final enum GlucoseLowAlarm:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

.field public static final enum GlucoseOutLowAlarm:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

.field public static final enum LongAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

.field public static final enum MixedVibAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

.field public static final enum NoAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

.field public static final enum ShortAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 31
    new-instance v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const/4 v1, 0x0

    const-string v2, "ShortAlert"

    invoke-direct {v0, v2, v1, v1}, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->ShortAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    .line 32
    new-instance v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const/4 v2, 0x1

    const-string v3, "LongAlert"

    invoke-direct {v0, v3, v2, v2}, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->LongAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    .line 33
    new-instance v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const/4 v3, 0x2

    const-string v4, "GlucoseHighAlarm"

    invoke-direct {v0, v4, v3, v3}, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->GlucoseHighAlarm:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    .line 34
    new-instance v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const/4 v4, 0x3

    const-string v5, "GlucoseLowAlarm"

    invoke-direct {v0, v5, v4, v4}, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->GlucoseLowAlarm:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    .line 35
    new-instance v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const/4 v5, 0x4

    const-string v6, "GlucoseOutLowAlarm"

    invoke-direct {v0, v6, v5, v5}, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->GlucoseOutLowAlarm:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    .line 36
    new-instance v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const/4 v6, 0x5

    const-string v7, "MixedVibAlert"

    invoke-direct {v0, v7, v6, v6}, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->MixedVibAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    .line 37
    new-instance v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const/4 v7, 0x6

    const-string v8, "NoAlert"

    invoke-direct {v0, v8, v7, v7}, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->NoAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    .line 30
    sget-object v9, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->ShortAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    aput-object v9, v8, v1

    sget-object v1, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->LongAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    aput-object v1, v8, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->GlucoseHighAlarm:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    aput-object v1, v8, v3

    sget-object v1, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->GlucoseLowAlarm:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    aput-object v1, v8, v4

    sget-object v1, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->GlucoseOutLowAlarm:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    aput-object v1, v8, v5

    sget-object v1, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->MixedVibAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->$VALUES:[Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;
    .locals 1

    .line 30
    const-class v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;
    .locals 1

    .line 30
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->$VALUES:[Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    invoke-virtual {v0}, [Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->id:I

    return v0
.end method
