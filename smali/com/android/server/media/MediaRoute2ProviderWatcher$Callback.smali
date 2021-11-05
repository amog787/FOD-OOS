.class public interface abstract Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRoute2ProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAddProviderService(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V
.end method

.method public abstract onRemoveProviderService(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V
.end method
