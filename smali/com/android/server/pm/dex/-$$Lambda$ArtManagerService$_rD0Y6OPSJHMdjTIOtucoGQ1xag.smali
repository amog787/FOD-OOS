.class public final synthetic Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag;->f$0:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    iput p2, p0, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag;->f$0:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    iget v1, p0, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/dex/ArtManagerService;->lambda$postError$0(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V

    return-void
.end method
