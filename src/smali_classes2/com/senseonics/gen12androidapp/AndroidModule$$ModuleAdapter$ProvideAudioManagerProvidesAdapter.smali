.class public final Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;
.super Ldaggero/internal/ProvidesBinding;
.source "AndroidModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideAudioManagerProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/ProvidesBinding<",
        "Landroid/media/AudioManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/AndroidModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V
    .locals 4

    const-string v0, "android.media.AudioManager"

    const/4 v1, 0x0

    const-string v2, "com.senseonics.gen12androidapp.AndroidModule"

    const-string v3, "provideAudioManager"

    .line 201
    invoke-direct {p0, v0, v1, v2, v3}, Ldaggero/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 202
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/AndroidModule;

    const/4 p1, 0x1

    .line 203
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public get()Landroid/media/AudioManager;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/AndroidModule;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/AndroidModule;->provideAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;->get()Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method
