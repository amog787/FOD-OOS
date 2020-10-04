.class public final synthetic Lcom/android/server/slice/-$$Lambda$SliceManagerService$LkusK1jmu9JKJTiMRWqWxNGEGbY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/android/server/slice/SliceManagerService;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/slice/SliceManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/slice/-$$Lambda$SliceManagerService$LkusK1jmu9JKJTiMRWqWxNGEGbY;->f$0:Lcom/android/server/slice/SliceManagerService;

    iput p2, p0, Lcom/android/server/slice/-$$Lambda$SliceManagerService$LkusK1jmu9JKJTiMRWqWxNGEGbY;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/slice/-$$Lambda$SliceManagerService$LkusK1jmu9JKJTiMRWqWxNGEGbY;->f$0:Lcom/android/server/slice/SliceManagerService;

    iget v1, p0, Lcom/android/server/slice/-$$Lambda$SliceManagerService$LkusK1jmu9JKJTiMRWqWxNGEGbY;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/slice/SliceManagerService;->lambda$getHomeMatcher$3$SliceManagerService(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
