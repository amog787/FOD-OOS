.class final Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;
.super Landroid/os/RemoteCallbackList;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalDeathRecipients"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Lcom/android/internal/textservice/ISpellCheckerSessionListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mGroup:Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)V
    .locals 0
    .param p1, "group"    # Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 997
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 998
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->mGroup:Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 999
    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    .line 993
    check-cast p1, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->onCallbackDied(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    return-void
.end method

.method public onCallbackDied(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 1003
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->mGroup:Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 1004
    return-void
.end method
