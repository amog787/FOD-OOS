.class public final synthetic Lcom/android/server/policy/-$$Lambda$LegacyGlobalActions$MdLN6qUJHty5FwMejjTE2cTYSvc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$LegacyGlobalActions$MdLN6qUJHty5FwMejjTE2cTYSvc;->f$0:Lcom/android/server/policy/LegacyGlobalActions;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$LegacyGlobalActions$MdLN6qUJHty5FwMejjTE2cTYSvc;->f$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions;->lambda$createDialog$1$LegacyGlobalActions()Z

    move-result v0

    return v0
.end method
