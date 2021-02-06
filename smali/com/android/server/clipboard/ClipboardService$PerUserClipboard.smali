.class Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
.super Ljava/lang/Object;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboard/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerUserClipboard"
.end annotation


# instance fields
.field final activePermissionOwners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field primaryClip:Landroid/content/ClipData;

.field final primaryClipListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/IOnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field primaryClipUid:I

.field final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;

.field final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/clipboard/ClipboardService;I)V
    .locals 0
    .param p2, "userId"    # I

    .line 252
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 247
    const/16 p1, 0x270f

    iput p1, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    .line 249
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    .line 253
    iput p2, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->userId:I

    .line 254
    return-void
.end method
