.class Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;
.super Ljava/lang/Object;
.source "MockableLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/AbstractLocationProvider$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/MockableLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private final mListenerProvider:Lcom/android/server/location/AbstractLocationProvider;

.field final synthetic this$0:Lcom/android/server/location/MockableLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/MockableLocationProvider;Lcom/android/server/location/AbstractLocationProvider;)V
    .locals 0
    .param p2, "listenerProvider"    # Lcom/android/server/location/AbstractLocationProvider;

    .line 257
    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p2, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 259
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/MockableLocationProvider;Lcom/android/server/location/AbstractLocationProvider;Lcom/android/server/location/MockableLocationProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/MockableLocationProvider;
    .param p2, "x1"    # Lcom/android/server/location/AbstractLocationProvider;
    .param p3, "x2"    # Lcom/android/server/location/MockableLocationProvider$1;

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;-><init>(Lcom/android/server/location/MockableLocationProvider;Lcom/android/server/location/AbstractLocationProvider;)V

    return-void
.end method


# virtual methods
.method public final onReportLocation(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .line 274
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/MockableLocationProvider;->access$100(Lcom/android/server/location/MockableLocationProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/MockableLocationProvider;->access$200(Lcom/android/server/location/MockableLocationProvider;)Lcom/android/server/location/AbstractLocationProvider;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 276
    monitor-exit v0

    return-void

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockableLocationProvider;->reportLocation(Landroid/location/Location;)V

    .line 280
    monitor-exit v0

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onReportLocation(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 285
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/MockableLocationProvider;->access$100(Lcom/android/server/location/MockableLocationProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/MockableLocationProvider;->access$200(Lcom/android/server/location/MockableLocationProvider;)Lcom/android/server/location/AbstractLocationProvider;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 287
    monitor-exit v0

    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockableLocationProvider;->reportLocation(Ljava/util/List;)V

    .line 291
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onStateChanged(Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/server/location/AbstractLocationProvider$State;)V
    .locals 3
    .param p1, "oldState"    # Lcom/android/server/location/AbstractLocationProvider$State;
    .param p2, "newState"    # Lcom/android/server/location/AbstractLocationProvider$State;

    .line 263
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/MockableLocationProvider;->access$100(Lcom/android/server/location/MockableLocationProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/MockableLocationProvider;->access$200(Lcom/android/server/location/MockableLocationProvider;)Lcom/android/server/location/AbstractLocationProvider;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 265
    monitor-exit v0

    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1, p2}, Lcom/android/server/location/MockableLocationProvider;->setState(Lcom/android/server/location/AbstractLocationProvider$State;)V

    .line 269
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
