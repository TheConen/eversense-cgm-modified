.class public final synthetic Lcom/squareup/javapoet/-$$Lambda$E-gEikyzMjxB_pc_89Vg4PhZvxE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/squareup/javapoet/-$$Lambda$E-gEikyzMjxB_pc_89Vg4PhZvxE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/javapoet/-$$Lambda$E-gEikyzMjxB_pc_89Vg4PhZvxE;

    invoke-direct {v0}, Lcom/squareup/javapoet/-$$Lambda$E-gEikyzMjxB_pc_89Vg4PhZvxE;-><init>()V

    sput-object v0, Lcom/squareup/javapoet/-$$Lambda$E-gEikyzMjxB_pc_89Vg4PhZvxE;->INSTANCE:Lcom/squareup/javapoet/-$$Lambda$E-gEikyzMjxB_pc_89Vg4PhZvxE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;

    check-cast p2, Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p1, p2}, Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;

    return-void
.end method
