.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$CKd7k7tgVFSnLDkfvKWVskFRr48;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:[I

.field public final synthetic f$2:[Landroid/content/Intent;

.field public final synthetic f$3:[Lcom/android/server/uri/NeededUriGrants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$CKd7k7tgVFSnLDkfvKWVskFRr48;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$CKd7k7tgVFSnLDkfvKWVskFRr48;->f$1:[I

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$CKd7k7tgVFSnLDkfvKWVskFRr48;->f$2:[Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$CKd7k7tgVFSnLDkfvKWVskFRr48;->f$3:[Lcom/android/server/uri/NeededUriGrants;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$CKd7k7tgVFSnLDkfvKWVskFRr48;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$CKd7k7tgVFSnLDkfvKWVskFRr48;->f$1:[I

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$CKd7k7tgVFSnLDkfvKWVskFRr48;->f$2:[Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$CKd7k7tgVFSnLDkfvKWVskFRr48;->f$3:[Lcom/android/server/uri/NeededUriGrants;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/wm/ActivityStack;->lambda$navigateUpTo$7(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
