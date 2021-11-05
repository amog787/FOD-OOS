.class Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
.super Landroid/hardware/radio/IAnnouncementListener$Stub;
.source "AnnouncementAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModuleWatcher"
.end annotation


# instance fields
.field public currentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/Announcement;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseHandle:Landroid/hardware/radio/ICloseHandle;

.field final synthetic this$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;


# direct methods
.method private constructor <init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->this$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    invoke-direct {p0}, Landroid/hardware/radio/IAnnouncementListener$Stub;-><init>()V

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->currentList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
    .param p2, "x1"    # Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$1;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->mCloseHandle:Landroid/hardware/radio/ICloseHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/hardware/radio/ICloseHandle;->close()V

    .line 72
    :cond_0
    return-void
.end method

.method public onListUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/Announcement;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "active":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/Announcement;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->currentList:Ljava/util/List;

    .line 63
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->this$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->access$100(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V

    .line 64
    return-void
.end method

.method public setCloseHandle(Landroid/hardware/radio/ICloseHandle;)V
    .locals 1
    .param p1, "closeHandle"    # Landroid/hardware/radio/ICloseHandle;

    .line 67
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/ICloseHandle;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->mCloseHandle:Landroid/hardware/radio/ICloseHandle;

    .line 68
    return-void
.end method
