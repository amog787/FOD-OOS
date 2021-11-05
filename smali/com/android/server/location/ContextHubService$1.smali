.class Lcom/android/server/location/ContextHubService$1;
.super Landroid/database/ContentObserver;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ContextHubService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ContextHubService;


# direct methods
.method constructor <init>(Lcom/android/server/location/ContextHubService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/ContextHubService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 203
    iput-object p1, p0, Lcom/android/server/location/ContextHubService$1;->this$0:Lcom/android/server/location/ContextHubService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 206
    iget-object v0, p0, Lcom/android/server/location/ContextHubService$1;->this$0:Lcom/android/server/location/ContextHubService;

    invoke-static {v0}, Lcom/android/server/location/ContextHubService;->access$500(Lcom/android/server/location/ContextHubService;)V

    .line 207
    return-void
.end method
