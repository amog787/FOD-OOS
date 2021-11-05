.class public final Lcom/android/server/power/PowerManagerService$Constants;
.super Landroid/database/ContentObserver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Constants"
.end annotation


# static fields
.field private static final DEFAULT_NO_CACHED_WAKE_LOCKS:Z = true

.field private static final KEY_NO_CACHED_WAKE_LOCKS:Ljava/lang/String; = "no_cached_wake_locks"


# instance fields
.field public NO_CACHED_WAKE_LOCKS:Z

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 754
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$Constants;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 755
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    .line 752
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 756
    return-void
.end method

.method private updateConstants()V
    .locals 4

    .line 771
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$Constants;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 773
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "power_manager_constants"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    goto :goto_0

    .line 783
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 775
    :catch_0
    move-exception v1

    .line 778
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v2, "PowerManagerService"

    const-string v3, "Bad alarm manager settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 781
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "no_cached_wake_locks"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    .line 783
    monitor-exit v0

    .line 784
    return-void

    .line 783
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 787
    const-string v0, "  Settings power_manager_constants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 789
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "no_cached_wake_locks"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 790
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 791
    return-void
.end method

.method dumpProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 794
    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 795
    .local v0, "constantsToken":J
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 797
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 798
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 767
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$Constants;->updateConstants()V

    .line 768
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 759
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 760
    const-string v0, "power_manager_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 762
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$Constants;->updateConstants()V

    .line 763
    return-void
.end method
