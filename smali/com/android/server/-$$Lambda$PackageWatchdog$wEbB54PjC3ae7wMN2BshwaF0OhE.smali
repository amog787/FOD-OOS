.class public final synthetic Lcom/android/server/-$$Lambda$PackageWatchdog$wEbB54PjC3ae7wMN2BshwaF0OhE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$wEbB54PjC3ae7wMN2BshwaF0OhE;->f$0:Lcom/android/server/PackageWatchdog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$wEbB54PjC3ae7wMN2BshwaF0OhE;->f$0:Lcom/android/server/PackageWatchdog;

    invoke-virtual {v0}, Lcom/android/server/PackageWatchdog;->lambda$checkAndMitigateNativeCrashes$5$PackageWatchdog()V

    return-void
.end method
