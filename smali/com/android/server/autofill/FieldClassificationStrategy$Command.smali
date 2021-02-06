.class interface abstract Lcom/android/server/autofill/FieldClassificationStrategy$Command;
.super Ljava/lang/Object;
.source "FieldClassificationStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/FieldClassificationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Command"
.end annotation


# virtual methods
.method public abstract run(Landroid/service/autofill/IAutofillFieldClassificationService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
