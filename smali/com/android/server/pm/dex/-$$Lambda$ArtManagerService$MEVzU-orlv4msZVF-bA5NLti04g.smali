.class public final synthetic Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$1:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g;->f$0:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g;->f$1:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    iput-object p3, p0, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g;->f$0:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g;->f$1:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    iget-object v2, p0, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/dex/ArtManagerService;->lambda$postSuccess$1(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    return-void
.end method
