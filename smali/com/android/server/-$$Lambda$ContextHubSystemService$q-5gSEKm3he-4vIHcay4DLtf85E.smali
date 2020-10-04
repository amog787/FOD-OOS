.class public final synthetic Lcom/android/server/-$$Lambda$ContextHubSystemService$q-5gSEKm3he-4vIHcay4DLtf85E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/ContextHubSystemService;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ContextHubSystemService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ContextHubSystemService$q-5gSEKm3he-4vIHcay4DLtf85E;->f$0:Lcom/android/server/ContextHubSystemService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$ContextHubSystemService$q-5gSEKm3he-4vIHcay4DLtf85E;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ContextHubSystemService$q-5gSEKm3he-4vIHcay4DLtf85E;->f$0:Lcom/android/server/ContextHubSystemService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$ContextHubSystemService$q-5gSEKm3he-4vIHcay4DLtf85E;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/ContextHubSystemService;->lambda$new$0$ContextHubSystemService(Landroid/content/Context;)V

    return-void
.end method
