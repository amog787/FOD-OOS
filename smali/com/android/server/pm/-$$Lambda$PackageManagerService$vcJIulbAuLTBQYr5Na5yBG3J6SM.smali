.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$vcJIulbAuLTBQYr5Na5yBG3J6SM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/pm/IPackageDataObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$vcJIulbAuLTBQYr5Na5yBG3J6SM;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$vcJIulbAuLTBQYr5Na5yBG3J6SM;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$vcJIulbAuLTBQYr5Na5yBG3J6SM;->f$2:J

    iput p5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$vcJIulbAuLTBQYr5Na5yBG3J6SM;->f$3:I

    iput-object p6, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$vcJIulbAuLTBQYr5Na5yBG3J6SM;->f$4:Landroid/content/pm/IPackageDataObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$vcJIulbAuLTBQYr5Na5yBG3J6SM;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$vcJIulbAuLTBQYr5Na5yBG3J6SM;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$vcJIulbAuLTBQYr5Na5yBG3J6SM;->f$2:J

    iget v4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$vcJIulbAuLTBQYr5Na5yBG3J6SM;->f$3:I

    iget-object v5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$vcJIulbAuLTBQYr5Na5yBG3J6SM;->f$4:Landroid/content/pm/IPackageDataObserver;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->lambda$freeStorageAndNotify$12$PackageManagerService(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    return-void
.end method
