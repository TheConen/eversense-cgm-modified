.class public final synthetic Lcom/squareup/javapoet/-$$Lambda$CodeBlock$4OiVWL2H4Cp8bJ8bFtXxJ2xGSoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/squareup/javapoet/CodeBlock$Builder;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/squareup/javapoet/CodeBlock$Builder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/javapoet/-$$Lambda$CodeBlock$4OiVWL2H4Cp8bJ8bFtXxJ2xGSoo;->f$0:Lcom/squareup/javapoet/CodeBlock$Builder;

    iput-object p2, p0, Lcom/squareup/javapoet/-$$Lambda$CodeBlock$4OiVWL2H4Cp8bJ8bFtXxJ2xGSoo;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/squareup/javapoet/-$$Lambda$CodeBlock$4OiVWL2H4Cp8bJ8bFtXxJ2xGSoo;->f$0:Lcom/squareup/javapoet/CodeBlock$Builder;

    iget-object v1, p0, Lcom/squareup/javapoet/-$$Lambda$CodeBlock$4OiVWL2H4Cp8bJ8bFtXxJ2xGSoo;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;

    invoke-static {v0, v1, p1}, Lcom/squareup/javapoet/CodeBlock;->lambda$joining$2(Lcom/squareup/javapoet/CodeBlock$Builder;Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;)Lcom/squareup/javapoet/CodeBlock;

    move-result-object p1

    return-object p1
.end method
