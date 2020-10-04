.class Lcom/android/server/om/IdmapManager$1;
.super Ljava/lang/Object;
.source "IdmapManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/om/IdmapManager;->connectToIdmap2d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/IdmapManager;


# direct methods
.method constructor <init>(Lcom/android/server/om/IdmapManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/om/IdmapManager;

    .line 158
    iput-object p1, p0, Lcom/android/server/om/IdmapManager$1;->this$0:Lcom/android/server/om/IdmapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 161
    const-string v0, "OverlayManager"

    const-string/jumbo v1, "service \'idmap\' died; reconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/server/om/IdmapManager$1;->this$0:Lcom/android/server/om/IdmapManager;

    invoke-static {v0}, Lcom/android/server/om/IdmapManager;->access$000(Lcom/android/server/om/IdmapManager;)V

    .line 163
    return-void
.end method
