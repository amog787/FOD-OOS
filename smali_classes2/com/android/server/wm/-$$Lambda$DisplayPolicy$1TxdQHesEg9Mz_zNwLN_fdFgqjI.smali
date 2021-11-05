.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayPolicy$1TxdQHesEg9Mz_zNwLN_fdFgqjI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;

.field public final synthetic f$1:Lcom/android/server/wm/DisplayFrames;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$1TxdQHesEg9Mz_zNwLN_fdFgqjI;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$1TxdQHesEg9Mz_zNwLN_fdFgqjI;->f$1:Lcom/android/server/wm/DisplayFrames;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$1TxdQHesEg9Mz_zNwLN_fdFgqjI;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$1TxdQHesEg9Mz_zNwLN_fdFgqjI;->f$1:Lcom/android/server/wm/DisplayFrames;

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayPolicy;->lambda$simulateLayoutDisplay$10$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)V

    return-void
.end method
