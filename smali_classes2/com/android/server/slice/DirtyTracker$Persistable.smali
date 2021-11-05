.class public interface abstract Lcom/android/server/slice/DirtyTracker$Persistable;
.super Ljava/lang/Object;
.source "DirtyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/DirtyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Persistable"
.end annotation


# virtual methods
.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
