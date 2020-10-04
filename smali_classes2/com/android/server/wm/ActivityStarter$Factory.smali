.class interface abstract Lcom/android/server/wm/ActivityStarter$Factory;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Factory"
.end annotation


# virtual methods
.method public abstract obtain()Lcom/android/server/wm/ActivityStarter;
.end method

.method public abstract recycle(Lcom/android/server/wm/ActivityStarter;)V
.end method

.method public abstract setController(Lcom/android/server/wm/ActivityStartController;)V
.end method
