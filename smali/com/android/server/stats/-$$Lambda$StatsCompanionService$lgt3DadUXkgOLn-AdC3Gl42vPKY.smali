.class public final synthetic Lcom/android/server/stats/-$$Lambda$StatsCompanionService$lgt3DadUXkgOLn-AdC3Gl42vPKY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/os/ParcelFileDescriptor;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:Landroid/content/pm/PackageManager;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$lgt3DadUXkgOLn-AdC3Gl42vPKY;->f$0:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$lgt3DadUXkgOLn-AdC3Gl42vPKY;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$lgt3DadUXkgOLn-AdC3Gl42vPKY;->f$2:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$lgt3DadUXkgOLn-AdC3Gl42vPKY;->f$0:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$lgt3DadUXkgOLn-AdC3Gl42vPKY;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$lgt3DadUXkgOLn-AdC3Gl42vPKY;->f$2:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1, v2}, Lcom/android/server/stats/StatsCompanionService;->lambda$informAllUidsLocked$0(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Landroid/content/pm/PackageManager;)V

    return-void
.end method
