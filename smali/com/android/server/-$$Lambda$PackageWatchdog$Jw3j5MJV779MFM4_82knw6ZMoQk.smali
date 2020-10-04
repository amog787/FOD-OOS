.class public final synthetic Lcom/android/server/-$$Lambda$PackageWatchdog$Jw3j5MJV779MFM4_82knw6ZMoQk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$Jw3j5MJV779MFM4_82knw6ZMoQk;->f$0:Lcom/android/server/PackageWatchdog;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$Jw3j5MJV779MFM4_82knw6ZMoQk;->f$0:Lcom/android/server/PackageWatchdog;

    invoke-virtual {v0, p1}, Lcom/android/server/PackageWatchdog;->lambda$setPropertyChangedListenerLocked$5$PackageWatchdog(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
