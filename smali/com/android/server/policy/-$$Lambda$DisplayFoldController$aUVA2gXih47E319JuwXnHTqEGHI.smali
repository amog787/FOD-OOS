.class public final synthetic Lcom/android/server/policy/-$$Lambda$DisplayFoldController$aUVA2gXih47E319JuwXnHTqEGHI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/DisplayFoldController;

.field public final synthetic f$1:Landroid/view/IDisplayFoldListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/DisplayFoldController;Landroid/view/IDisplayFoldListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$aUVA2gXih47E319JuwXnHTqEGHI;->f$0:Lcom/android/server/policy/DisplayFoldController;

    iput-object p2, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$aUVA2gXih47E319JuwXnHTqEGHI;->f$1:Landroid/view/IDisplayFoldListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$aUVA2gXih47E319JuwXnHTqEGHI;->f$0:Lcom/android/server/policy/DisplayFoldController;

    iget-object v1, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$aUVA2gXih47E319JuwXnHTqEGHI;->f$1:Landroid/view/IDisplayFoldListener;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DisplayFoldController;->lambda$registerDisplayFoldListener$1$DisplayFoldController(Landroid/view/IDisplayFoldListener;)V

    return-void
.end method
