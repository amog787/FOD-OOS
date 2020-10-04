.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayPolicy$j3sY1jb4WFF_F3wOT9D2fB2mOts;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;

.field private final synthetic f$1:Lcom/android/server/wm/WindowManagerService;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$j3sY1jb4WFF_F3wOT9D2fB2mOts;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$j3sY1jb4WFF_F3wOT9D2fB2mOts;->f$1:Lcom/android/server/wm/WindowManagerService;

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$j3sY1jb4WFF_F3wOT9D2fB2mOts;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$j3sY1jb4WFF_F3wOT9D2fB2mOts;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$j3sY1jb4WFF_F3wOT9D2fB2mOts;->f$1:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$j3sY1jb4WFF_F3wOT9D2fB2mOts;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->lambda$new$0$DisplayPolicy(Lcom/android/server/wm/WindowManagerService;I)V

    return-void
.end method
