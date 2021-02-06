.class public final synthetic Lcom/android/server/slice/-$$Lambda$SliceManagerService$ic_PW16x_KcVi-NszMwHhErqI0s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/slice/SliceManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/slice/SliceManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/slice/-$$Lambda$SliceManagerService$ic_PW16x_KcVi-NszMwHhErqI0s;->f$0:Lcom/android/server/slice/SliceManagerService;

    iput p2, p0, Lcom/android/server/slice/-$$Lambda$SliceManagerService$ic_PW16x_KcVi-NszMwHhErqI0s;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/slice/-$$Lambda$SliceManagerService$ic_PW16x_KcVi-NszMwHhErqI0s;->f$0:Lcom/android/server/slice/SliceManagerService;

    iget v1, p0, Lcom/android/server/slice/-$$Lambda$SliceManagerService$ic_PW16x_KcVi-NszMwHhErqI0s;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/slice/SliceManagerService;->lambda$getAssistantMatcher$2$SliceManagerService(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
