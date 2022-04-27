.class public final synthetic Lcom/squareup/javapoet/-$$Lambda$5PjCM7eyD3wzKvobeq60HES21jc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/squareup/javapoet/-$$Lambda$5PjCM7eyD3wzKvobeq60HES21jc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/javapoet/-$$Lambda$5PjCM7eyD3wzKvobeq60HES21jc;

    invoke-direct {v0}, Lcom/squareup/javapoet/-$$Lambda$5PjCM7eyD3wzKvobeq60HES21jc;-><init>()V

    sput-object v0, Lcom/squareup/javapoet/-$$Lambda$5PjCM7eyD3wzKvobeq60HES21jc;->INSTANCE:Lcom/squareup/javapoet/-$$Lambda$5PjCM7eyD3wzKvobeq60HES21jc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;

    invoke-virtual {p1}, Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;->join()Lcom/squareup/javapoet/CodeBlock;

    move-result-object p1

    return-object p1
.end method
