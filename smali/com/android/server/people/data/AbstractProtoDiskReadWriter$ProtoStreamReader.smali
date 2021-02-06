.class interface abstract Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;
.super Ljava/lang/Object;
.source "AbstractProtoDiskReadWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/AbstractProtoDiskReadWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ProtoStreamReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract read(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")TT;"
        }
    .end annotation
.end method
