.class public abstract Lcom/android/server/integrity/parser/RandomAccessObject;
.super Ljava/lang/Object;
.source "RandomAccessObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;,
        Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ofBytes([B)Lcom/android/server/integrity/parser/RandomAccessObject;
    .locals 1
    .param p0, "bytes"    # [B

    .line 49
    new-instance v0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;

    invoke-direct {v0, p0}, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;-><init>([B)V

    return-object v0
.end method

.method public static ofFile(Ljava/io/File;)Lcom/android/server/integrity/parser/RandomAccessObject;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;

    invoke-direct {v0, p0}, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract length()I
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract seek(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
