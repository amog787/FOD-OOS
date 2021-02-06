.class public final synthetic Lcom/android/server/people/data/-$$Lambda$DataManager$ztMbdFDhe4OEyKgDP1LTUUePsk0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:Landroid/os/CancellationSignal;

.field public final synthetic f$2:Lcom/android/server/people/data/DataManager$NotificationListener;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/CancellationSignal;Lcom/android/server/people/data/DataManager$NotificationListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ztMbdFDhe4OEyKgDP1LTUUePsk0;->f$0:Lcom/android/server/people/data/DataManager;

    iput-object p2, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ztMbdFDhe4OEyKgDP1LTUUePsk0;->f$1:Landroid/os/CancellationSignal;

    iput-object p3, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ztMbdFDhe4OEyKgDP1LTUUePsk0;->f$2:Lcom/android/server/people/data/DataManager$NotificationListener;

    iput p4, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ztMbdFDhe4OEyKgDP1LTUUePsk0;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ztMbdFDhe4OEyKgDP1LTUUePsk0;->f$0:Lcom/android/server/people/data/DataManager;

    iget-object v1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ztMbdFDhe4OEyKgDP1LTUUePsk0;->f$1:Landroid/os/CancellationSignal;

    iget-object v2, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ztMbdFDhe4OEyKgDP1LTUUePsk0;->f$2:Lcom/android/server/people/data/DataManager$NotificationListener;

    iget v3, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ztMbdFDhe4OEyKgDP1LTUUePsk0;->f$3:I

    check-cast p1, Lcom/android/server/people/data/PackageData;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/people/data/DataManager;->lambda$pruneDataForUser$3$DataManager(Landroid/os/CancellationSignal;Lcom/android/server/people/data/DataManager$NotificationListener;ILcom/android/server/people/data/PackageData;)V

    return-void
.end method
