.class public Ljcifs/util/RC4;
.super Ljava/lang/Object;
.source "RC4.java"


# instance fields
.field i:I

.field j:I

.field s:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/util/RC4;->init([BII)V

    return-void
.end method


# virtual methods
.method public init([BII)V
    .locals 7

    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 36
    iput-object v1, p0, Ljcifs/util/RC4;->s:[B

    const/4 v1, 0x0

    .line 38
    iput v1, p0, Ljcifs/util/RC4;->i:I

    :goto_0
    iget v2, p0, Ljcifs/util/RC4;->i:I

    if-ge v2, v0, :cond_0

    .line 39
    iget-object v3, p0, Ljcifs/util/RC4;->s:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    .line 38
    iput v2, p0, Ljcifs/util/RC4;->i:I

    goto :goto_0

    .line 41
    :cond_0
    iput v1, p0, Ljcifs/util/RC4;->j:I

    iput v1, p0, Ljcifs/util/RC4;->i:I

    :goto_1
    iget v2, p0, Ljcifs/util/RC4;->i:I

    if-ge v2, v0, :cond_1

    .line 42
    iget v3, p0, Ljcifs/util/RC4;->j:I

    rem-int v4, v2, p3

    add-int/2addr v4, p2

    aget-byte v4, p1, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Ljcifs/util/RC4;->s:[B

    aget-byte v5, v4, v2

    add-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Ljcifs/util/RC4;->j:I

    .line 43
    aget-byte v5, v4, v2

    .line 44
    aget-byte v6, v4, v3

    aput-byte v6, v4, v2

    .line 45
    aput-byte v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    .line 41
    iput v2, p0, Ljcifs/util/RC4;->i:I

    goto :goto_1

    .line 48
    :cond_1
    iput v1, p0, Ljcifs/util/RC4;->j:I

    iput v1, p0, Ljcifs/util/RC4;->i:I

    return-void
.end method

.method public update([BII[BI)V
    .locals 5

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 56
    iget v0, p0, Ljcifs/util/RC4;->i:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljcifs/util/RC4;->i:I

    .line 57
    iget v1, p0, Ljcifs/util/RC4;->j:I

    iget-object v2, p0, Ljcifs/util/RC4;->s:[B

    aget-byte v3, v2, v0

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Ljcifs/util/RC4;->j:I

    .line 58
    aget-byte v3, v2, v0

    .line 59
    aget-byte v4, v2, v1

    aput-byte v4, v2, v0

    .line 60
    aput-byte v3, v2, v1

    add-int/lit8 v3, p5, 0x1

    add-int/lit8 v4, p2, 0x1

    .line 61
    aget-byte p2, p1, p2

    aget-byte v0, v2, v0

    aget-byte v1, v2, v1

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v2, v0

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    move p5, v3

    move p2, v4

    goto :goto_0

    :cond_0
    return-void
.end method
