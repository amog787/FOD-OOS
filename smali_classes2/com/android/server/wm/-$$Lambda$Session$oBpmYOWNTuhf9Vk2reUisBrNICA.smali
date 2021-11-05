.class public final synthetic Lcom/android/server/wm/-$$Lambda$Session$oBpmYOWNTuhf9Vk2reUisBrNICA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$Session$oBpmYOWNTuhf9Vk2reUisBrNICA;->f$0:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$Session$oBpmYOWNTuhf9Vk2reUisBrNICA;->f$0:Landroid/os/IBinder;

    check-cast p1, Lcom/android/server/wm/WallpaperController;

    check-cast p2, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/Session;->lambda$wallpaperCommandComplete$5(Landroid/os/IBinder;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
