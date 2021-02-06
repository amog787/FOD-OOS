.class public final synthetic Lcom/android/server/wm/-$$Lambda$EmbeddedWindowController$Q0HHIdTKm8MX4DsCYgzZ2UOUXPQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/EmbeddedWindowController;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/EmbeddedWindowController;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$EmbeddedWindowController$Q0HHIdTKm8MX4DsCYgzZ2UOUXPQ;->f$0:Lcom/android/server/wm/EmbeddedWindowController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$EmbeddedWindowController$Q0HHIdTKm8MX4DsCYgzZ2UOUXPQ;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$EmbeddedWindowController$Q0HHIdTKm8MX4DsCYgzZ2UOUXPQ;->f$0:Lcom/android/server/wm/EmbeddedWindowController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$EmbeddedWindowController$Q0HHIdTKm8MX4DsCYgzZ2UOUXPQ;->f$1:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/EmbeddedWindowController;->lambda$add$0$EmbeddedWindowController(Landroid/os/IBinder;)V

    return-void
.end method
