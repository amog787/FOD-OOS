.class public final synthetic Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/TaskSnapshotSurface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskSnapshotSurface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;->f$0:Lcom/android/server/wm/TaskSnapshotSurface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;->f$0:Lcom/android/server/wm/TaskSnapshotSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotSurface;->remove()V

    return-void
.end method
