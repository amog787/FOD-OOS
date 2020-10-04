.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$YKgmK-4MuJjN-VLuMBhmJy1eWj4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/NetworkManagementService;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/NetworkManagementService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$YKgmK-4MuJjN-VLuMBhmJy1eWj4;->f$0:Lcom/android/server/NetworkManagementService;

    iput p2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$YKgmK-4MuJjN-VLuMBhmJy1eWj4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$YKgmK-4MuJjN-VLuMBhmJy1eWj4;->f$0:Lcom/android/server/NetworkManagementService;

    iget v1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$YKgmK-4MuJjN-VLuMBhmJy1eWj4;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/NetworkManagementService;->lambda$addIdleTimer$12$NetworkManagementService(I)V

    return-void
.end method
