.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideSecurePrefFilenameProvidesAdapter;
.super Ldaggero/internal/ProvidesBinding;
.source "ApplicationModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideSecurePrefFilenameProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/ProvidesBinding<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/ApplicationModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ApplicationModule;)V
    .locals 4

    const-string v0, "@javax.inject.Named(value=SecurePrefFilename)/java.lang.String"

    const/4 v1, 0x0

    const-string v2, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v3, "provideSecurePrefFilename"

    .line 2423
    invoke-direct {p0, v0, v1, v2, v3}, Ldaggero/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2424
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideSecurePrefFilenameProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    const/4 p1, 0x1

    .line 2425
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideSecurePrefFilenameProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2419
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideSecurePrefFilenameProvidesAdapter;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 2434
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideSecurePrefFilenameProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ApplicationModule;->provideSecurePrefFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
