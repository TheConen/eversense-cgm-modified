.class public Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;
.super Ljava/lang/Object;
.source "ModelChangedLinkedSensorIdEvent.java"


# instance fields
.field private sensorId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;->sensorId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSensorId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;->sensorId:Ljava/lang/String;

    return-object v0
.end method
