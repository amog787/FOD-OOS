.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$Hs4ibiwzKmd9u0PZ04vysXRExho;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$Hs4ibiwzKmd9u0PZ04vysXRExho;->f$0:Lcom/android/server/NetworkManagementService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$Hs4ibiwzKmd9u0PZ04vysXRExho;->f$0:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v0}, Lcom/android/server/NetworkManagementService;->lambda$tetherLimitReached$6$NetworkManagementService()V

    return-void
.end method
