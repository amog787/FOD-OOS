.class public final synthetic Lcom/android/server/policy/-$$Lambda$j_3GF7S52oSV__e_mYWlY5TeyiM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$j_3GF7S52oSV__e_mYWlY5TeyiM;->f$0:Lcom/android/server/policy/GlobalActions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$j_3GF7S52oSV__e_mYWlY5TeyiM;->f$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions;->onGlobalActionsDismissed()V

    return-void
.end method
