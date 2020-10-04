.class public final synthetic Lcom/android/server/backup/internal/-$$Lambda$RunInitializeReceiver$6NFkS59RniyJ8xe_gfe6oyt63HQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/backup/internal/OnTaskFinishedListener;


# instance fields
.field private final synthetic f$0:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public synthetic constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/internal/-$$Lambda$RunInitializeReceiver$6NFkS59RniyJ8xe_gfe6oyt63HQ;->f$0:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final onFinished(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/internal/-$$Lambda$RunInitializeReceiver$6NFkS59RniyJ8xe_gfe6oyt63HQ;->f$0:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, p1}, Lcom/android/server/backup/internal/RunInitializeReceiver;->lambda$onReceive$0(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    return-void
.end method
