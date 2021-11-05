.class Lcom/android/server/display/LocalDisplayAdapter$2;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/LocalDisplayAdapter;

    .line 210
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$2;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$2;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->access$000(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oneplus_screen_refresh_rate"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$2;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->access$102(Lcom/android/server/display/LocalDisplayAdapter;I)I

    .line 215
    const-string v0, "LocalDisplayAdapter"

    const-string/jumbo v1, "setfps 2.1"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method
