.class interface abstract Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ProcessDependencies"
.end annotation


# virtual methods
.method public abstract getRss(I)[J
.end method

.method public abstract performCompaction(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
