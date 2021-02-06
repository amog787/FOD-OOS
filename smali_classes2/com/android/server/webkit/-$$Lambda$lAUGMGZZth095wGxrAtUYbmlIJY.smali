.class public final synthetic Lcom/android/server/webkit/-$$Lambda$lAUGMGZZth095wGxrAtUYbmlIJY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/webkit/WebViewUpdateServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/webkit/WebViewUpdateServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/webkit/-$$Lambda$lAUGMGZZth095wGxrAtUYbmlIJY;->f$0:Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/webkit/-$$Lambda$lAUGMGZZth095wGxrAtUYbmlIJY;->f$0:Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->startZygoteWhenReady()V

    return-void
.end method
