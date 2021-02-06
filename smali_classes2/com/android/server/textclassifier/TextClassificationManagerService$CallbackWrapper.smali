.class final Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;
.super Landroid/service/textclassifier/ITextClassifierCallback$Stub;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;


# direct methods
.method constructor <init>(Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 1
    .param p1, "wrapped"    # Landroid/service/textclassifier/ITextClassifierCallback;

    .line 1044
    invoke-direct {p0}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;-><init>()V

    .line 1045
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/service/textclassifier/ITextClassifierCallback;

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;

    .line 1046
    return-void
.end method

.method private static changeIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;

    .line 1139
    invoke-static {}, Lcom/android/server/textclassifier/IconsUriHelper;->getInstance()Lcom/android/server/textclassifier/IconsUriHelper;

    move-result-object v0

    .line 1140
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/textclassifier/IconsUriHelper;->getContentUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1141
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1
.end method

.method private static rewriteConversationActionsIcons(Landroid/os/Bundle;)V
    .locals 9
    .param p0, "result"    # Landroid/os/Bundle;

    .line 1093
    invoke-static {p0}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/ConversationActions;

    .line 1094
    .local v0, "convActions":Landroid/view/textclassifier/ConversationActions;
    const/4 v1, 0x0

    .line 1095
    .local v1, "rewrite":Z
    invoke-virtual {v0}, Landroid/view/textclassifier/ConversationActions;->getConversationActions()Ljava/util/List;

    move-result-object v2

    .line 1096
    .local v2, "origConvActions":Ljava/util/List;, "Ljava/util/List<Landroid/view/textclassifier/ConversationAction;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1097
    .local v3, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1098
    .local v4, "validConvActions":Ljava/util/List;, "Ljava/util/List<Landroid/view/textclassifier/ConversationAction;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 1099
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/textclassifier/ConversationAction;

    .line 1101
    .local v6, "convAction":Landroid/view/textclassifier/ConversationAction;
    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationAction;->getAction()Landroid/app/RemoteAction;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->shouldRewriteIcon(Landroid/app/RemoteAction;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1102
    const/4 v1, 0x1

    .line 1103
    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationAction;->toBuilder()Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v7

    .line 1104
    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationAction;->getAction()Landroid/app/RemoteAction;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->validAction(Landroid/app/RemoteAction;)Landroid/app/RemoteAction;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/textclassifier/ConversationAction$Builder;->setAction(Landroid/app/RemoteAction;)Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v7

    .line 1105
    invoke-virtual {v7}, Landroid/view/textclassifier/ConversationAction$Builder;->build()Landroid/view/textclassifier/ConversationAction;

    move-result-object v7

    .local v7, "validConvAction":Landroid/view/textclassifier/ConversationAction;
    goto :goto_1

    .line 1107
    .end local v7    # "validConvAction":Landroid/view/textclassifier/ConversationAction;
    :cond_0
    move-object v7, v6

    .line 1109
    .restart local v7    # "validConvAction":Landroid/view/textclassifier/ConversationAction;
    :goto_1
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    .end local v6    # "convAction":Landroid/view/textclassifier/ConversationAction;
    .end local v7    # "validConvAction":Landroid/view/textclassifier/ConversationAction;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1111
    .end local v5    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 1112
    new-instance v5, Landroid/view/textclassifier/ConversationActions;

    .line 1114
    invoke-virtual {v0}, Landroid/view/textclassifier/ConversationActions;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Landroid/view/textclassifier/ConversationActions;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 1112
    invoke-static {p0, v5}, Landroid/service/textclassifier/TextClassifierService;->putResponse(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 1116
    :cond_2
    return-void
.end method

.method private static rewriteTextClassificationIcons(Landroid/os/Bundle;)V
    .locals 8
    .param p0, "result"    # Landroid/os/Bundle;

    .line 1066
    invoke-static {p0}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassification;

    .line 1067
    .local v0, "classification":Landroid/view/textclassifier/TextClassification;
    const/4 v1, 0x0

    .line 1068
    .local v1, "rewrite":Z
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v2

    .line 1069
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1070
    .local v3, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1071
    .local v4, "validActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 1072
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/RemoteAction;

    .line 1074
    .local v6, "action":Landroid/app/RemoteAction;
    invoke-static {v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->shouldRewriteIcon(Landroid/app/RemoteAction;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1075
    const/4 v1, 0x1

    .line 1076
    invoke-static {v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->validAction(Landroid/app/RemoteAction;)Landroid/app/RemoteAction;

    move-result-object v7

    .local v7, "validAction":Landroid/app/RemoteAction;
    goto :goto_1

    .line 1078
    .end local v7    # "validAction":Landroid/app/RemoteAction;
    :cond_0
    move-object v7, v6

    .line 1080
    .restart local v7    # "validAction":Landroid/app/RemoteAction;
    :goto_1
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    .end local v6    # "action":Landroid/app/RemoteAction;
    .end local v7    # "validAction":Landroid/app/RemoteAction;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1082
    .end local v5    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 1083
    nop

    .line 1085
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->toBuilder()Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v5

    .line 1086
    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassification$Builder;->clearActions()Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v5

    .line 1087
    invoke-virtual {v5, v4}, Landroid/view/textclassifier/TextClassification$Builder;->addActions(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v5

    .line 1088
    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object v5

    .line 1083
    invoke-static {p0, v5}, Landroid/service/textclassifier/TextClassifierService;->putResponse(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 1090
    :cond_2
    return-void
.end method

.method private static shouldRewriteIcon(Landroid/app/RemoteAction;)Z
    .locals 2
    .param p0, "action"    # Landroid/app/RemoteAction;

    .line 1134
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static validAction(Landroid/app/RemoteAction;)Landroid/app/RemoteAction;
    .locals 5
    .param p0, "action"    # Landroid/app/RemoteAction;

    .line 1119
    new-instance v0, Landroid/app/RemoteAction;

    .line 1120
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->changeIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 1121
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1122
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1123
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1124
    .local v0, "newAction":Landroid/app/RemoteAction;
    invoke-virtual {p0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 1125
    invoke-virtual {p0}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteAction;->setShouldShowIcon(Z)V

    .line 1126
    return-object v0
.end method


# virtual methods
.method public onFailure()V
    .locals 3

    .line 1147
    :try_start_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;

    invoke-interface {v0}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    goto :goto_0

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TextClassificationManagerService"

    const-string v2, "Callback error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Bundle;

    .line 1050
    invoke-static {p1}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1051
    .local v0, "parcelled":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/view/textclassifier/TextClassification;

    if-eqz v1, :cond_0

    .line 1052
    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteTextClassificationIcons(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1053
    :cond_0
    instance-of v1, v0, Landroid/view/textclassifier/ConversationActions;

    if-eqz v1, :cond_1

    .line 1054
    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteConversationActionsIcons(Landroid/os/Bundle;)V

    .line 1059
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;

    invoke-interface {v1, p1}, Landroid/service/textclassifier/ITextClassifierCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    goto :goto_1

    .line 1060
    :catch_0
    move-exception v1

    .line 1061
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TextClassificationManagerService"

    const-string v3, "Callback error"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1063
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
